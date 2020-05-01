.class public abstract Lo/OL;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final b:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lo/OL;-><init>(ZILo/amc;)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lo/OL;->b:Z

    return-void
.end method

.method public synthetic constructor <init>(ZILo/amc;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 3
    :cond_0
    invoke-direct {p0, p1}, Lo/OL;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public abstract a()I
.end method

.method public final f()Z
    .locals 1

    .line 3
    iget-boolean v0, p0, Lo/OL;->b:Z

    return v0
.end method
