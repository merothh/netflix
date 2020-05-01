.class Lo/Lf;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final b:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

.field private final d:Lo/KX;


# direct methods
.method public constructor <init>(Lo/KX;Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/Lf;->d:Lo/KX;

    iput-object p2, p0, Lo/Lf;->b:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lo/Lf;->d:Lo/KX;

    iget-object v1, p0, Lo/Lf;->b:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v0, v1}, Lo/KX;->e(Lo/KX;Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    return-void
.end method
