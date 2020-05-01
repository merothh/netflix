.class Lo/nN;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lo/nQ;

.field private final c:Ljava/util/Map;


# direct methods
.method public constructor <init>(Lo/nQ;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/nN;->a:Lo/nQ;

    iput-object p2, p0, Lo/nN;->c:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lo/nN;->a:Lo/nQ;

    iget-object v1, p0, Lo/nN;->c:Ljava/util/Map;

    invoke-static {v0, v1}, Lo/nQ;->e(Lo/nQ;Ljava/util/Map;)V

    return-void
.end method
