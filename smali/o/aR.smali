.class Lo/aR;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final a:Ljava/lang/String;

.field private final d:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

.field private final e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/aR;->a:Ljava/lang/String;

    iput-object p2, p0, Lo/aR;->e:Ljava/lang/String;

    iput-object p3, p0, Lo/aR;->d:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lo/aR;->a:Ljava/lang/String;

    iget-object v1, p0, Lo/aR;->e:Ljava/lang/String;

    iget-object v2, p0, Lo/aR;->d:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v0, v1, v2, p1, p2}, Lo/aO;->b(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/android/activity/NetflixActivity;Landroid/content/DialogInterface;I)V

    return-void
.end method
