.class public final Lo/UP$AssistContent;
.super Lo/UP;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/UP;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AssistContent"
.end annotation


# instance fields
.field private final d:F


# direct methods
.method public constructor <init>(F)V
    .locals 1

    const/4 v0, 0x0

    .line 207
    invoke-direct {p0, v0}, Lo/UP;-><init>(Lo/amc;)V

    iput p1, p0, Lo/UP$AssistContent;->d:F

    return-void
.end method


# virtual methods
.method public final c()F
    .locals 1

    .line 207
    iget v0, p0, Lo/UP$AssistContent;->d:F

    return v0
.end method
