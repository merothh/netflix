.class Lo/lw;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lo/lf$5;

.field private final c:I

.field private final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lo/lf$5;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/lw;->a:Lo/lf$5;

    iput-object p2, p0, Lo/lw;->d:Ljava/lang/String;

    iput p3, p0, Lo/lw;->c:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lo/lw;->a:Lo/lf$5;

    iget-object v1, p0, Lo/lw;->d:Ljava/lang/String;

    iget v2, p0, Lo/lw;->c:I

    invoke-static {v0, v1, v2}, Lo/lf$5;->c(Lo/lf$5;Ljava/lang/String;I)V

    return-void
.end method
