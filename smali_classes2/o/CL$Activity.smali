.class final Lo/CL$Activity;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/CL;->d(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lo/CL;

.field final synthetic b:Lcom/netflix/mediaclient/android/activity/NetflixActivity;


# direct methods
.method constructor <init>(Lo/CL;Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V
    .locals 0

    iput-object p1, p0, Lo/CL$Activity;->a:Lo/CL;

    iput-object p2, p0, Lo/CL$Activity;->b:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 27
    iget-object p1, p0, Lo/CL$Activity;->a:Lo/CL;

    iget-object p2, p0, Lo/CL$Activity;->b:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    check-cast p2, Landroid/content/Context;

    invoke-virtual {p1, p2}, Lo/CL;->e(Landroid/content/Context;)V

    .line 29
    iget-object p1, p0, Lo/CL$Activity;->a:Lo/CL;

    iget-object p2, p0, Lo/CL$Activity;->b:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    check-cast p2, Landroid/app/Activity;

    invoke-virtual {p1, p2}, Lo/CL;->a(Landroid/app/Activity;)V

    return-void
.end method
