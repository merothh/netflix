.class Lo/nR;
.super Ljava/lang/Object;

# interfaces
.implements Lo/nZ$TaskDescription;


# instance fields
.field private final c:Lo/nQ;


# direct methods
.method public constructor <init>(Lo/nQ;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/nR;->c:Lo/nQ;

    return-void
.end method


# virtual methods
.method public d()V
    .locals 1

    iget-object v0, p0, Lo/nR;->c:Lo/nQ;

    invoke-static {v0}, Lo/nQ;->y(Lo/nQ;)V

    return-void
.end method
