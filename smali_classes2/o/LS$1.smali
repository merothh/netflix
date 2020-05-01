.class final Lo/LS$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar$Activity;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/LS;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

.field final synthetic d:Lo/LS;


# direct methods
.method constructor <init>(Lo/LS;Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V
    .locals 0

    iput-object p1, p0, Lo/LS$1;->d:Lo/LS;

    iput-object p2, p0, Lo/LS$1;->b:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final d(Z)V
    .locals 1

    .line 105
    iget-object p1, p0, Lo/LS$1;->d:Lo/LS;

    invoke-virtual {p1}, Lo/LS;->d()Lo/LQ;

    move-result-object p1

    iget-object v0, p0, Lo/LS$1;->b:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {p1, v0}, Lo/LQ;->a(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    return-void
.end method
