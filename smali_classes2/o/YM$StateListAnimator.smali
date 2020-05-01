.class final Lo/YM$StateListAnimator;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/netflix/mediaclient/android/activity/NetflixActivity$Application;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/YM;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic b:Lo/YM;


# direct methods
.method constructor <init>(Lo/YM;)V
    .locals 0

    iput-object p1, p0, Lo/YM$StateListAnimator;->b:Lo/YM;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run(Lo/Am;)V
    .locals 1

    const-string v0, "manager"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    invoke-virtual {p1}, Lo/Am;->W()Z

    move-result p1

    if-nez p1, :cond_0

    .line 76
    iget-object p1, p0, Lo/YM$StateListAnimator;->b:Lo/YM;

    invoke-virtual {p1}, Lo/YM;->finish()V

    :cond_0
    return-void
.end method
