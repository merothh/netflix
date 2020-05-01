.class public Lo/lZ;
.super Lo/mk;
.source ""


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 1

    const-string v0, "PIN_VERIFICATION_INCORRECT_PIN"

    .line 12
    invoke-direct {p0, v0}, Lo/mk;-><init>(Ljava/lang/String;)V

    .line 13
    iput-object p1, p0, Lo/lZ;->b:Lorg/json/JSONObject;

    return-void
.end method
