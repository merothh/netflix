.class final Lo/YY$PictureInPictureParams;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/YY;->b(Lo/BC;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lo/BC;

.field final synthetic b:Lo/YY;


# direct methods
.method constructor <init>(Lo/YY;Lo/BC;)V
    .locals 0

    iput-object p1, p0, Lo/YY$PictureInPictureParams;->b:Lo/YY;

    iput-object p2, p0, Lo/YY$PictureInPictureParams;->a:Lo/BC;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 380
    new-instance p1, Lcom/netflix/cl/model/event/session/command/EditContentRestrictionCommand;

    invoke-direct {p1}, Lcom/netflix/cl/model/event/session/command/EditContentRestrictionCommand;-><init>()V

    check-cast p1, Lcom/netflix/cl/model/event/session/command/Command;

    invoke-static {p1}, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->e(Lcom/netflix/cl/model/event/session/command/Command;)V

    .line 381
    new-instance p1, Lo/Ik;

    iget-object v0, p0, Lo/YY$PictureInPictureParams;->b:Lo/YY;

    invoke-virtual {v0}, Lo/YY;->h()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Lo/Ik;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "profiles/restrictions/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/YY$PictureInPictureParams;->a:Lo/BC;

    invoke-interface {v1}, Lo/BC;->getProfileGuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lo/Ik;->d(Ljava/lang/String;)Z

    .line 382
    iget-object p1, p0, Lo/YY$PictureInPictureParams;->b:Lo/YY;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lo/YY;->d(Lo/YY;Z)V

    return-void
.end method
