.class public final Lo/AllCapsTransformationMethod;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final d:Lo/DynamicLayout;


# direct methods
.method public constructor <init>(Lo/DynamicLayout;)V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/AllCapsTransformationMethod;->d:Lo/DynamicLayout;

    return-void
.end method


# virtual methods
.method public final b()Lo/DynamicLayout;
    .locals 1

    .line 5
    iget-object v0, p0, Lo/AllCapsTransformationMethod;->d:Lo/DynamicLayout;

    return-object v0
.end method

.method public final d()Z
    .locals 1

    .line 8
    iget-object v0, p0, Lo/AllCapsTransformationMethod;->d:Lo/DynamicLayout;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lo/DynamicLayout;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
