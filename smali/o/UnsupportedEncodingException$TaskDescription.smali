.class public final Lo/UnsupportedEncodingException$TaskDescription;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/UnsupportedEncodingException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TaskDescription"
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:Landroidx/fragment/app/Fragment;

.field public e:I

.field public f:I

.field public i:Landroidx/lifecycle/Lifecycle$State;

.field public j:Landroidx/lifecycle/Lifecycle$State;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(ILandroidx/fragment/app/Fragment;)V
    .locals 0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput p1, p0, Lo/UnsupportedEncodingException$TaskDescription;->e:I

    .line 77
    iput-object p2, p0, Lo/UnsupportedEncodingException$TaskDescription;->d:Landroidx/fragment/app/Fragment;

    .line 78
    sget-object p1, Landroidx/lifecycle/Lifecycle$State;->RESUMED:Landroidx/lifecycle/Lifecycle$State;

    iput-object p1, p0, Lo/UnsupportedEncodingException$TaskDescription;->i:Landroidx/lifecycle/Lifecycle$State;

    .line 79
    sget-object p1, Landroidx/lifecycle/Lifecycle$State;->RESUMED:Landroidx/lifecycle/Lifecycle$State;

    iput-object p1, p0, Lo/UnsupportedEncodingException$TaskDescription;->j:Landroidx/lifecycle/Lifecycle$State;

    return-void
.end method

.method constructor <init>(ILandroidx/fragment/app/Fragment;Landroidx/lifecycle/Lifecycle$State;)V
    .locals 0

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput p1, p0, Lo/UnsupportedEncodingException$TaskDescription;->e:I

    .line 84
    iput-object p2, p0, Lo/UnsupportedEncodingException$TaskDescription;->d:Landroidx/fragment/app/Fragment;

    .line 85
    iget-object p1, p2, Landroidx/fragment/app/Fragment;->mMaxState:Landroidx/lifecycle/Lifecycle$State;

    iput-object p1, p0, Lo/UnsupportedEncodingException$TaskDescription;->i:Landroidx/lifecycle/Lifecycle$State;

    .line 86
    iput-object p3, p0, Lo/UnsupportedEncodingException$TaskDescription;->j:Landroidx/lifecycle/Lifecycle$State;

    return-void
.end method
