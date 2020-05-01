.class public final Lo/DisplayAdjustments;
.super Lo/Enum;
.source ""


# instance fields
.field private b:Z


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 129
    invoke-direct {p0}, Lo/Enum;-><init>()V

    return-void
.end method


# virtual methods
.method public final c(Z)V
    .locals 0

    .line 130
    iput-boolean p1, p0, Lo/DisplayAdjustments;->b:Z

    return-void
.end method

.method public final c()Z
    .locals 1

    .line 130
    iget-boolean v0, p0, Lo/DisplayAdjustments;->b:Z

    return v0
.end method
