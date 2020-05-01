.class public final Lo/mc;
.super Lo/mk;
.source ""


# static fields
.field private static a:Ljava/lang/String; = "isPinVerified"


# instance fields
.field private c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 1

    const-string v0, "MDX_ACTION_PIN_VERIFICATION_NOT_REQUIRED"

    .line 10
    invoke-direct {p0, v0}, Lo/mk;-><init>(Ljava/lang/String;)V

    .line 11
    sget-object v0, Lo/mc;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lo/mc;->c:Z

    .line 12
    iput-object p1, p0, Lo/mc;->b:Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method public c()Z
    .locals 1

    .line 15
    iget-boolean v0, p0, Lo/mc;->c:Z

    return v0
.end method
