class CouponsController < ApplicationController
    before_action :set_coupon, only: [:show]
    before_action :add_coupon, only: [:create]

    def index
        @coupons = Coupon.all
    end

    def create
    end

    def show
    end

    private
        def set_coupon
            @coupon = Coupon.find_by_id(params[:id])
        end

        def add_coupon
            @coupon = Coupon.create(coupon_code: params[:coupon][:coupon_code], store: params[:coupon][:store])
            redirect_to coupon_path(@coupon)
        end
end