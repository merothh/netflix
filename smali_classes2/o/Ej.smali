.class Lo/Ej;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/netflix/mediaclient/android/activity/NetflixActivity$Application;


# instance fields
.field private final e:Lo/DY;


# direct methods
.method public constructor <init>(Lo/DY;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/Ej;->e:Lo/DY;

    return-void
.end method


# virtual methods
.method public run(Lo/Am;)V
    .locals 1

    iget-object v0, p0, Lo/Ej;->e:Lo/DY;

    invoke-static {v0, p1}, Lo/DY;->e(Lo/DY;Lo/Am;)V

    return-void
.end method
