.class public final Lo/ViewOverlay$StateListAnimator;
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
    name = "StateListAnimator"
.end annotation


# instance fields
.field private final b:[Lo/ViewOverlay$Application;


# direct methods
.method public constructor <init>([Lo/ViewOverlay$Application;)V
    .locals 0

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    iput-object p1, p0, Lo/ViewOverlay$StateListAnimator;->b:[Lo/ViewOverlay$Application;

    return-void
.end method


# virtual methods
.method public c()[Lo/ViewOverlay$Application;
    .locals 1

    .line 158
    iget-object v0, p0, Lo/ViewOverlay$StateListAnimator;->b:[Lo/ViewOverlay$Application;

    return-object v0
.end method
