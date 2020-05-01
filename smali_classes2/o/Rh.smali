.class Lo/Rh;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final b:Lo/BE;

.field private final c:Ljava/util/List;


# direct methods
.method public constructor <init>(Lo/BE;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/Rh;->b:Lo/BE;

    iput-object p2, p0, Lo/Rh;->c:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lo/Rh;->b:Lo/BE;

    iget-object v1, p0, Lo/Rh;->c:Ljava/util/List;

    invoke-static {v0, v1}, Lo/Rj;->e(Lo/BE;Ljava/util/List;)V

    return-void
.end method
