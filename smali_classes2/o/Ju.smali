.class Lo/Ju;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/netflix/mediaclient/android/activity/NetflixActivity$Application;


# instance fields
.field private final b:Lo/Jw;

.field private final e:Landroid/view/View;


# direct methods
.method public constructor <init>(Lo/Jw;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/Ju;->b:Lo/Jw;

    iput-object p2, p0, Lo/Ju;->e:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public run(Lo/Am;)V
    .locals 2

    iget-object v0, p0, Lo/Ju;->b:Lo/Jw;

    iget-object v1, p0, Lo/Ju;->e:Landroid/view/View;

    invoke-static {v0, v1, p1}, Lo/Jw;->e(Lo/Jw;Landroid/view/View;Lo/Am;)V

    return-void
.end method
