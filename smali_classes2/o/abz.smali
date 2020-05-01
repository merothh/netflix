.class Lo/abz;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/netflix/mediaclient/android/activity/NetflixActivity$Application;


# instance fields
.field private final a:Lo/abu;


# direct methods
.method public constructor <init>(Lo/abu;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/abz;->a:Lo/abu;

    return-void
.end method


# virtual methods
.method public run(Lo/Am;)V
    .locals 1

    iget-object v0, p0, Lo/abz;->a:Lo/abu;

    invoke-static {v0, p1}, Lo/abu;->a(Lo/abu;Lo/Am;)V

    return-void
.end method
