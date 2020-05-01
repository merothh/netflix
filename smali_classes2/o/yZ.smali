.class Lo/yZ;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final b:Lo/yV;

.field private final e:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lo/yV;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/yZ;->b:Lo/yV;

    iput-object p2, p0, Lo/yZ;->e:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lo/yZ;->b:Lo/yV;

    iget-object v1, p0, Lo/yZ;->e:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Lo/yV;->e(Lo/yV;Ljava/lang/Runnable;)V

    return-void
.end method
