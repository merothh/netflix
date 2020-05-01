.class Lo/ct;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final c:Lo/co;

.field private final d:Lcom/netflix/mediaclient/android/app/Status;

.field private final e:Lo/Bc;


# direct methods
.method public constructor <init>(Lo/co;Lo/Bc;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/ct;->c:Lo/co;

    iput-object p2, p0, Lo/ct;->e:Lo/Bc;

    iput-object p3, p0, Lo/ct;->d:Lcom/netflix/mediaclient/android/app/Status;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lo/ct;->c:Lo/co;

    iget-object v1, p0, Lo/ct;->e:Lo/Bc;

    iget-object v2, p0, Lo/ct;->d:Lcom/netflix/mediaclient/android/app/Status;

    invoke-static {v0, v1, v2}, Lo/co;->a(Lo/co;Lo/Bc;Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method
