.class Lo/bn;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final d:Lo/bp;


# direct methods
.method public constructor <init>(Lo/bp;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/bn;->d:Lo/bp;

    iput-object p2, p0, Lo/bn;->b:Ljava/lang/String;

    iput-object p3, p0, Lo/bn;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lo/bn;->d:Lo/bp;

    iget-object v1, p0, Lo/bn;->b:Ljava/lang/String;

    iget-object v2, p0, Lo/bn;->a:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lo/bp;->c(Lo/bp;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
