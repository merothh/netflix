.class public Lo/lU;
.super Lo/mk;
.source ""


# static fields
.field private static a:Ljava/lang/String; = "uid"


# instance fields
.field private c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 1

    const-string v0, "DIALOG_CANCEL"

    .line 28
    invoke-direct {p0, v0}, Lo/mk;-><init>(Ljava/lang/String;)V

    .line 29
    sget-object v0, Lo/lU;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/lU;->c:Ljava/lang/String;

    .line 30
    iput-object p1, p0, Lo/lU;->b:Lorg/json/JSONObject;

    return-void
.end method
