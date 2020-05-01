.class Lo/IS;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/netflix/mediaclient/android/activity/NetflixActivity$Application;


# instance fields
.field private final b:Lo/IL;


# direct methods
.method public constructor <init>(Lo/IL;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/IS;->b:Lo/IL;

    return-void
.end method


# virtual methods
.method public run(Lo/Am;)V
    .locals 1

    iget-object v0, p0, Lo/IS;->b:Lo/IL;

    invoke-static {v0, p1}, Lo/IL;->a(Lo/IL;Lo/Am;)V

    return-void
.end method
