.class public final Lo/InputEventConsistencyVerifier;
.super Lo/Enum;
.source ""


# instance fields
.field private final a:Lo/Cloneable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/Cloneable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 276
    invoke-direct {p0}, Lo/Enum;-><init>()V

    .line 278
    new-instance v0, Lo/Cloneable;

    invoke-direct {v0}, Lo/Cloneable;-><init>()V

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/Cloneable;->e(Ljava/lang/Object;)V

    iput-object v0, p0, Lo/InputEventConsistencyVerifier;->a:Lo/Cloneable;

    return-void
.end method


# virtual methods
.method public final a()Lo/Cloneable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/Cloneable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 278
    iget-object v0, p0, Lo/InputEventConsistencyVerifier;->a:Lo/Cloneable;

    return-object v0
.end method
