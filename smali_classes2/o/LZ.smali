.class Lo/LZ;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field private final c:Landroid/content/Intent;

.field private final d:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

.field private final e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Intent;Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/LZ;->c:Landroid/content/Intent;

    iput-object p2, p0, Lo/LZ;->d:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    iput-object p3, p0, Lo/LZ;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lo/LZ;->c:Landroid/content/Intent;

    iget-object v1, p0, Lo/LZ;->d:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    iget-object v2, p0, Lo/LZ;->e:Ljava/lang/String;

    check-cast p1, Lo/Tg;

    invoke-static {v0, v1, v2, p1}, Lo/Mb;->e(Landroid/content/Intent;Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/lang/String;Lo/Tg;)V

    return-void
.end method
