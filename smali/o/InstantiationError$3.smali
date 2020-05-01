.class Lo/InstantiationError$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/InternalError$TaskDescription;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/InstantiationError;->e()Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lo/InstantiationError;


# direct methods
.method constructor <init>(Lo/InstantiationError;)V
    .locals 0

    .line 171
    iput-object p1, p0, Lo/InstantiationError$3;->b:Lo/InstantiationError;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(I)V
    .locals 1

    .line 175
    iget-object v0, p0, Lo/InstantiationError$3;->b:Lo/InstantiationError;

    invoke-virtual {v0, p1}, Lo/InstantiationError;->b(I)V

    return-void
.end method

.method public d(I)V
    .locals 1

    .line 180
    iget-object v0, p0, Lo/InstantiationError$3;->b:Lo/InstantiationError;

    invoke-virtual {v0, p1}, Lo/InstantiationError;->e(I)V

    return-void
.end method
