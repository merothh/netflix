.class Lo/acL;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lo/Ik;

.field private final d:Lo/acK$Application;

.field private final e:Lcom/netflix/mediaclient/android/app/Status;


# direct methods
.method public constructor <init>(Lo/acK$Application;Lo/Ik;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/acL;->d:Lo/acK$Application;

    iput-object p2, p0, Lo/acL;->a:Lo/Ik;

    iput-object p3, p0, Lo/acL;->e:Lcom/netflix/mediaclient/android/app/Status;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lo/acL;->d:Lo/acK$Application;

    iget-object v1, p0, Lo/acL;->a:Lo/Ik;

    iget-object v2, p0, Lo/acL;->e:Lcom/netflix/mediaclient/android/app/Status;

    invoke-static {v0, v1, v2}, Lo/acK$Application;->a(Lo/acK$Application;Lo/Ik;Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method
