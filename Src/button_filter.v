`default_nettype none

module button_filter(
         input wire clk,
         input wire rst_n,
         input wire button,
         output reg press_signal,
         output reg release_signal,
         output reg hold_signal
       );

parameter IDLE = 3'b000;
parameter PRESS_DEBOUNCE = 3'b001;
parameter PRESSED = 3'b010;
parameter HOLD = 3'b011;
parameter RELEASE_DEBOUNCE = 3'b100;

parameter freq = 200_000_000; // 200 MHz
parameter debounce_time = 20; // 20 ms
parameter hold_time = 250; // 500 ms

parameter debounce_count_max = ( freq / 1000 ) * debounce_time - 1;//先除后乘，以免中间乘积溢出
parameter hold_count_max = ( freq / 1000 ) * hold_time - 1;

reg [ 2: 0 ] current_state;
reg [ 2: 0 ] next_state;

reg [ 31: 0 ] debounce_count;
reg [ 31: 0 ] hold_count;

reg debounce_count_enable;
reg hold_count_enable;

reg d_button;
reg dd_button;

always @( posedge clk or negedge rst_n )    // 双FF同步，避免亚稳态
  begin
    if ( !rst_n )
      begin
        d_button <= 1'b1;
        dd_button <= 1'b1;
      end
    else
      begin
        d_button <= button;
        dd_button <= d_button;
      end
  end

always @( posedge clk or negedge rst_n )    // 状态寄存器
  begin
    if ( !rst_n )
      begin
        current_state <= IDLE;
      end
    else
      begin
        current_state <= next_state;
      end
  end

always @( * )   //状态转移逻辑，组合逻辑
  begin
    // Set default values to avoid latch inference
    debounce_count_enable = 1'b0;
    hold_count_enable = 1'b0;
    next_state = current_state;
    case ( current_state )
      IDLE:
        begin
          if ( !dd_button )
            begin
              next_state = PRESS_DEBOUNCE;
            end
          else
            begin
              next_state = IDLE;
            end
        end
      PRESS_DEBOUNCE:
        begin
          debounce_count_enable = 1'b1;
          if ( debounce_count >= debounce_count_max )
            begin
              next_state = PRESSED;
              debounce_count_enable = 1'b0;
            end
          else if ( dd_button )
            begin
              next_state = IDLE;
              debounce_count_enable = 1'b0;
            end
          else
            begin
              next_state = PRESS_DEBOUNCE;
            end
        end
      PRESSED:
        begin
          hold_count_enable = 1'b1;
          if ( dd_button )
            begin
              next_state = RELEASE_DEBOUNCE;
              hold_count_enable = 1'b0;
            end
          else if ( hold_count >= hold_count_max )
            begin
              next_state = HOLD;
              hold_count_enable = 1'b0;
            end
          else
            begin
              next_state = PRESSED;
            end
        end
      HOLD:
        begin
          if ( dd_button )
            begin
              next_state = RELEASE_DEBOUNCE;
            end
          else
            begin
              next_state = HOLD;
            end
        end
      RELEASE_DEBOUNCE:
        begin
          debounce_count_enable = 1'b1;
          if ( debounce_count >= debounce_count_max )
            begin
              next_state = IDLE;
              debounce_count_enable = 1'b0;
            end
          else if ( !dd_button )
            begin
              next_state = PRESSED;
              debounce_count_enable = 1'b0;
            end
          else
            begin
              next_state = RELEASE_DEBOUNCE;
            end
        end
      default:
        begin
          next_state = IDLE;
        end
    endcase
  end

always @( posedge clk or negedge rst_n )    //消抖计时器
  begin
    if ( !rst_n )
      begin
        debounce_count <= 32'b0;
      end
    else if ( debounce_count_enable )
      begin
        if ( debounce_count >= debounce_count_max )
          begin
            debounce_count <= 32'b0;
          end
        else
          begin
            debounce_count <= debounce_count + 1'b1;
          end
      end
    else
      begin
        debounce_count <= 32'b0;
      end
  end

always @( posedge clk or negedge rst_n )    //长按计时器
  begin
    if ( !rst_n )
      begin
        hold_count <= 32'b0;
      end
    else if ( hold_count_enable )
      begin
        if ( hold_count >= hold_count_max )
          begin
            hold_count <= 32'b0;
          end
        else
          begin
            hold_count <= hold_count + 1'b1;
          end
      end
    else
      begin
        hold_count <= 32'b0;
      end
  end

always @( posedge clk or negedge rst_n )    // 输出信号逻辑，与状态机当前状态和下一状态有关，属于Mealy型输出
  begin
    if ( !rst_n )
      begin
        press_signal <= 1'b0;
        release_signal <= 1'b0;
        hold_signal <= 1'b0;
      end
    else
      begin
        press_signal <= ( current_state == PRESS_DEBOUNCE && next_state == PRESSED ) ? 1'b1 : 1'b0;
        release_signal <= ( current_state == RELEASE_DEBOUNCE && next_state == IDLE ) ? 1'b1 : 1'b0;
        hold_signal <= ( current_state == PRESSED && next_state == HOLD ) ? 1'b1 : 1'b0;
      end
  end

endmodule

`default_nettype wire
