.class final Lo/FindActionModeCallback$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/FindActionModeCallback;->c(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/netflix/mediaclient/android/activity/NetflixActivity;


# direct methods
.method constructor <init>(ZLcom/netflix/mediaclient/android/activity/NetflixActivity;)V
    .locals 0

    .line 257
    iput-boolean p1, p0, Lo/FindActionModeCallback$3;->a:Z

    iput-object p2, p0, Lo/FindActionModeCallback$3;->b:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 260
    iget-boolean p1, p0, Lo/FindActionModeCallback$3;->a:Z

    if-eqz p1, :cond_0

    const-string p1, "ServiceErrorsHandler"

    const-string p2, "killing service"

    .line 261
    invoke-static {p1, p2}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    iget-object p1, p0, Lo/FindActionModeCallback$3;->b:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {p1}, Lo/adk;->h(Landroid/content/Context;)V

    goto :goto_0

    .line 264
    :cond_0
    iget-object p1, p0, Lo/FindActionModeCallback$3;->b:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->finish()V

    :goto_0
    return-void
.end method
