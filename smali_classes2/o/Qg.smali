.class Lo/Qg;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final b:Ljava/lang/String;

.field private final c:Landroid/content/Context;

.field private final d:I

.field private final e:Lcom/netflix/mediaclient/android/activity/NetflixActivity;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/netflix/mediaclient/android/activity/NetflixActivity;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/Qg;->c:Landroid/content/Context;

    iput-object p2, p0, Lo/Qg;->b:Ljava/lang/String;

    iput-object p3, p0, Lo/Qg;->e:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    iput p4, p0, Lo/Qg;->d:I

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    iget-object v0, p0, Lo/Qg;->c:Landroid/content/Context;

    iget-object v1, p0, Lo/Qg;->b:Ljava/lang/String;

    iget-object v2, p0, Lo/Qg;->e:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    iget v3, p0, Lo/Qg;->d:I

    move-object v4, p1

    move v5, p2

    invoke-static/range {v0 .. v5}, Lo/PY;->d(Landroid/content/Context;Ljava/lang/String;Lcom/netflix/mediaclient/android/activity/NetflixActivity;ILandroid/content/DialogInterface;I)V

    return-void
.end method
