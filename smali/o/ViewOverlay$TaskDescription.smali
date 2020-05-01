.class public final Lo/ViewOverlay$TaskDescription;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ViewOverlay$Activity;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ViewOverlay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TaskDescription"
.end annotation


# instance fields
.field private final a:I

.field private final b:I

.field private final d:Lo/Toast;


# direct methods
.method public constructor <init>(Lo/Toast;II)V
    .locals 0

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-object p1, p0, Lo/ViewOverlay$TaskDescription;->d:Lo/Toast;

    .line 84
    iput p2, p0, Lo/ViewOverlay$TaskDescription;->b:I

    .line 85
    iput p3, p0, Lo/ViewOverlay$TaskDescription;->a:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 93
    iget v0, p0, Lo/ViewOverlay$TaskDescription;->b:I

    return v0
.end method

.method public b()Lo/Toast;
    .locals 1

    .line 89
    iget-object v0, p0, Lo/ViewOverlay$TaskDescription;->d:Lo/Toast;

    return-object v0
.end method

.method public c()I
    .locals 1

    .line 97
    iget v0, p0, Lo/ViewOverlay$TaskDescription;->a:I

    return v0
.end method
