.class public Lo/DownloadListener;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnSystemUiVisibilityChangeListener;


# instance fields
.field private final d:Landroid/view/View;

.field private final e:Lcom/netflix/mediaclient/android/activity/NetflixActivity;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/DownloadListener;->e:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    iput-object p2, p0, Lo/DownloadListener;->d:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public onSystemUiVisibilityChange(I)V
    .locals 2

    iget-object v0, p0, Lo/DownloadListener;->e:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    iget-object v1, p0, Lo/DownloadListener;->d:Landroid/view/View;

    invoke-static {v0, v1, p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->d(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Landroid/view/View;I)V

    return-void
.end method
