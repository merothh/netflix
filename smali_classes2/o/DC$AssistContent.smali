.class public final Lo/DC$AssistContent;
.super Lo/DC;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/DC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AssistContent"
.end annotation


# instance fields
.field private final b:I

.field private final d:Z


# direct methods
.method public constructor <init>(IZ)V
    .locals 1

    const/4 v0, 0x0

    .line 194
    invoke-direct {p0, v0}, Lo/DC;-><init>(Lo/amc;)V

    iput p1, p0, Lo/DC$AssistContent;->b:I

    iput-boolean p2, p0, Lo/DC$AssistContent;->d:Z

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .line 193
    iget-boolean v0, p0, Lo/DC$AssistContent;->d:Z

    return v0
.end method

.method public final d()I
    .locals 1

    .line 192
    iget v0, p0, Lo/DC$AssistContent;->b:I

    return v0
.end method
