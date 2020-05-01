.class Lo/bq;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final b:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Lo/bp;


# direct methods
.method public constructor <init>(Lo/bp;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/bq;->e:Lo/bp;

    iput-object p2, p0, Lo/bq;->b:Ljava/lang/String;

    iput-object p3, p0, Lo/bq;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lo/bq;->e:Lo/bp;

    iget-object v1, p0, Lo/bq;->b:Ljava/lang/String;

    iget-object v2, p0, Lo/bq;->d:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lo/bp;->e(Lo/bp;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
