.class Lo/cl;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Ljava/util/List;

.field private final c:Lcom/netflix/mediaclient/android/app/Status;

.field private final d:Lo/co;


# direct methods
.method public constructor <init>(Lo/co;Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/cl;->d:Lo/co;

    iput-object p2, p0, Lo/cl;->a:Ljava/util/List;

    iput-object p3, p0, Lo/cl;->c:Lcom/netflix/mediaclient/android/app/Status;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lo/cl;->d:Lo/co;

    iget-object v1, p0, Lo/cl;->a:Ljava/util/List;

    iget-object v2, p0, Lo/cl;->c:Lcom/netflix/mediaclient/android/app/Status;

    invoke-static {v0, v1, v2}, Lo/co;->a(Lo/co;Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method
