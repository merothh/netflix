.class public final Lcom/google/android/gms/cast/CastStatusCodes;
.super Lcom/google/android/gms/common/api/CommonStatusCodes;


# direct methods
.method public static getStatusCodeString(I)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_5

    const/16 v0, 0x7df

    if-eq p0, v0, :cond_4

    const/4 v0, 0x7

    if-eq p0, v0, :cond_3

    const/16 v0, 0x8

    if-eq p0, v0, :cond_2

    const/16 v0, 0x898

    if-eq p0, v0, :cond_1

    const/16 v0, 0x899

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    packed-switch p0, :pswitch_data_2

    .line 24
    invoke-static {p0}, Lcom/google/android/gms/common/api/CommonStatusCodes;->getStatusCodeString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    const-string p0, "REPLACED"

    return-object p0

    :pswitch_1
    const-string p0, "STATUS_TIMED_OUT"

    return-object p0

    :pswitch_2
    const-string p0, "STATUS_CANCELLED"

    return-object p0

    :pswitch_3
    const-string p0, "FAILED"

    return-object p0

    :pswitch_4
    const-string p0, "MESSAGE_SEND_BUFFER_TOO_FULL"

    return-object p0

    :pswitch_5
    const-string p0, "MESSAGE_TOO_LARGE"

    return-object p0

    :pswitch_6
    const-string p0, "APPLICATION_NOT_RUNNING"

    return-object p0

    :pswitch_7
    const-string p0, "APPLICATION_NOT_FOUND"

    return-object p0

    :pswitch_8
    const-string p0, "NOT_ALLOWED"

    return-object p0

    :pswitch_9
    const-string p0, "CANCELED"

    return-object p0

    :pswitch_a
    const-string p0, "INVALID_REQUEST"

    return-object p0

    :pswitch_b
    const-string p0, "AUTHENTICATION_FAILED"

    return-object p0

    :pswitch_c
    const-string p0, "TIMEOUT"

    return-object p0

    :pswitch_d
    const-string p0, "INTERRUPTED"

    return-object p0

    :pswitch_e
    const-string p0, "UNKNOWN_ERROR"

    return-object p0

    :cond_0
    const-string p0, "ERROR_SERVICE_DISCONNECTED"

    return-object p0

    :cond_1
    const-string p0, "ERROR_SERVICE_CREATION_FAILED"

    return-object p0

    :cond_2
    const-string p0, "INTERNAL_ERROR"

    return-object p0

    :cond_3
    const-string p0, "NETWORK_ERROR"

    return-object p0

    :cond_4
    const-string p0, "TCP_PROBER_FAIL_TO_VERIFY_DEVICE"

    return-object p0

    :cond_5
    const-string p0, "SUCCESS"

    return-object p0

    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_e
        :pswitch_d
        :pswitch_c
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x7d0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x834
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
