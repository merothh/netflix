.class public final Lo/UP$SharedElementCallback;
.super Lo/UP;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/UP;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SharedElementCallback"
.end annotation


# instance fields
.field private final c:Z

.field private final d:Z


# direct methods
.method public constructor <init>(ZZ)V
    .locals 1

    const/4 v0, 0x0

    .line 136
    invoke-direct {p0, v0}, Lo/UP;-><init>(Lo/amc;)V

    iput-boolean p1, p0, Lo/UP$SharedElementCallback;->c:Z

    iput-boolean p2, p0, Lo/UP$SharedElementCallback;->d:Z

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .line 135
    iget-boolean v0, p0, Lo/UP$SharedElementCallback;->d:Z

    return v0
.end method

.method public final d()Z
    .locals 1

    .line 134
    iget-boolean v0, p0, Lo/UP$SharedElementCallback;->c:Z

    return v0
.end method
