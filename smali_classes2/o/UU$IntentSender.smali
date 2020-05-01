.class public final Lo/UU$IntentSender;
.super Lo/UU;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/UU;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "IntentSender"
.end annotation


# instance fields
.field private final b:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    .line 61
    invoke-direct {p0, v0}, Lo/UU;-><init>(Lo/amc;)V

    iput p1, p0, Lo/UU$IntentSender;->b:I

    return-void
.end method


# virtual methods
.method public final d()I
    .locals 1

    .line 61
    iget v0, p0, Lo/UU$IntentSender;->b:I

    return v0
.end method
