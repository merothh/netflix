.class final Lo/Vu$StateListAnimator;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/netflix/mediaclient/android/activity/NetflixActivity$Application;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Vu;->d(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic b:Lo/Vu;

.field final synthetic e:Ljava/lang/String;


# direct methods
.method constructor <init>(Lo/Vu;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lo/Vu$StateListAnimator;->b:Lo/Vu;

    iput-object p2, p0, Lo/Vu$StateListAnimator;->e:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run(Lo/Am;)V
    .locals 2

    const-string v0, "manager"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    invoke-virtual {p1}, Lo/Am;->w()Lo/zG;

    move-result-object p1

    .line 74
    new-instance v0, Lo/InternalRecoveryServiceException;

    .line 75
    iget-object v1, p0, Lo/Vu$StateListAnimator;->e:Ljava/lang/String;

    .line 74
    invoke-direct {v0, v1}, Lo/InternalRecoveryServiceException;-><init>(Ljava/lang/String;)V

    check-cast v0, Lo/ConfirmationCallback;

    .line 77
    new-instance v1, Lo/Vu$StateListAnimator$2;

    invoke-direct {v1, p0}, Lo/Vu$StateListAnimator$2;-><init>(Lo/Vu$StateListAnimator;)V

    check-cast v1, Lo/zU;

    .line 73
    invoke-interface {p1, v0, v1}, Lo/zG;->a(Lo/ConfirmationCallback;Lo/zU;)V

    return-void
.end method
