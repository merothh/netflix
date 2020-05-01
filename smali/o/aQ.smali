.class Lo/aQ;
.super Ljava/lang/Object;

# interfaces
.implements Lo/alA;


# instance fields
.field private final b:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Lo/aO;


# direct methods
.method public constructor <init>(Lo/aO;Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/aQ;->e:Lo/aO;

    iput-object p2, p0, Lo/aQ;->b:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    iput-object p3, p0, Lo/aQ;->d:Ljava/lang/String;

    iput-object p4, p0, Lo/aQ;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lo/aQ;->e:Lo/aO;

    iget-object v1, p0, Lo/aQ;->b:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    iget-object v2, p0, Lo/aQ;->d:Ljava/lang/String;

    iget-object v3, p0, Lo/aQ;->c:Ljava/lang/String;

    check-cast p1, Lo/bz;

    invoke-static {v0, v1, v2, v3, p1}, Lo/aO;->e(Lo/aO;Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/lang/String;Ljava/lang/String;Lo/bz;)Lo/akj;

    move-result-object p1

    return-object p1
.end method
