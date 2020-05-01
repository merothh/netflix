.class public final Lo/UU$AssistContent;
.super Lo/UU;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/UU;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AssistContent"
.end annotation


# instance fields
.field private final a:Z

.field private final b:I

.field private final d:I


# direct methods
.method public constructor <init>(IIZ)V
    .locals 1

    const/4 v0, 0x0

    .line 44
    invoke-direct {p0, v0}, Lo/UU;-><init>(Lo/amc;)V

    iput p1, p0, Lo/UU$AssistContent;->d:I

    iput p2, p0, Lo/UU$AssistContent;->b:I

    iput-boolean p3, p0, Lo/UU$AssistContent;->a:Z

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .line 43
    iget-boolean v0, p0, Lo/UU$AssistContent;->a:Z

    return v0
.end method

.method public final b()I
    .locals 1

    .line 42
    iget v0, p0, Lo/UU$AssistContent;->b:I

    return v0
.end method

.method public final c()I
    .locals 1

    .line 41
    iget v0, p0, Lo/UU$AssistContent;->d:I

    return v0
.end method
