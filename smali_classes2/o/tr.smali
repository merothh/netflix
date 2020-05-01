.class Lo/tr;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lo/Bj;

.field private final b:Lo/tt;

.field private final e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lo/tt;Ljava/lang/String;Lo/Bj;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/tr;->b:Lo/tt;

    iput-object p2, p0, Lo/tr;->e:Ljava/lang/String;

    iput-object p3, p0, Lo/tr;->a:Lo/Bj;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lo/tr;->b:Lo/tt;

    iget-object v1, p0, Lo/tr;->e:Ljava/lang/String;

    iget-object v2, p0, Lo/tr;->a:Lo/Bj;

    invoke-static {v0, v1, v2}, Lo/tt;->d(Lo/tt;Ljava/lang/String;Lo/Bj;)V

    return-void
.end method
