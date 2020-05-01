.class Lo/TI;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final c:Ljava/lang/Long;

.field private final d:Lo/TC;

.field private final e:Ljava/lang/Long;


# direct methods
.method public constructor <init>(Lo/TC;Ljava/lang/Long;Ljava/lang/Long;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/TI;->d:Lo/TC;

    iput-object p2, p0, Lo/TI;->e:Ljava/lang/Long;

    iput-object p3, p0, Lo/TI;->c:Ljava/lang/Long;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lo/TI;->d:Lo/TC;

    iget-object v1, p0, Lo/TI;->e:Ljava/lang/Long;

    iget-object v2, p0, Lo/TI;->c:Ljava/lang/Long;

    invoke-static {v0, v1, v2}, Lo/TC;->a(Lo/TC;Ljava/lang/Long;Ljava/lang/Long;)V

    return-void
.end method
