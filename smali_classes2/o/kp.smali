.class Lo/kp;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final e:Lo/ko;


# direct methods
.method public constructor <init>(Lo/ko;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/kp;->e:Lo/ko;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lo/kp;->e:Lo/ko;

    invoke-static {v0}, Lo/ko;->D(Lo/ko;)V

    return-void
.end method
