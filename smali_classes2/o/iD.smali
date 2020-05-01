.class Lo/iD;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final b:Lo/iH;

.field private final e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lo/iH;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/iD;->b:Lo/iH;

    iput-object p2, p0, Lo/iD;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lo/iD;->b:Lo/iH;

    iget-object v1, p0, Lo/iD;->e:Ljava/lang/String;

    invoke-static {v0, v1}, Lo/iH;->e(Lo/iH;Ljava/lang/String;)V

    return-void
.end method
