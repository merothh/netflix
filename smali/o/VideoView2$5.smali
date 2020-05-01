.class final Lo/VideoView2$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/VideoView2;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 73
    new-instance v0, Lo/VideoView2;

    const-string v1, "{value, plural, =0 {} =1 {dummy1} other{dummy {value}}}"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lo/VideoView2;-><init>(Ljava/lang/String;Lo/VideoView2$5;)V

    const/16 v1, 0xa

    .line 74
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "value"

    invoke-virtual {v0, v2, v1}, Lo/VideoView2;->a(Ljava/lang/String;Ljava/lang/Object;)Lo/VideoView2;

    move-result-object v0

    .line 75
    invoke-virtual {v0}, Lo/VideoView2;->c()Ljava/lang/String;

    return-void
.end method
