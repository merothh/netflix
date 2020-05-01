.class Lo/WordIterator$TaskDescription;
.super Landroid/database/DataSetObserver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/WordIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TaskDescription"
.end annotation


# instance fields
.field final a:Lo/WordIterator;


# direct methods
.method private constructor <init>(Lo/WordIterator;)V
    .locals 0

    .line 133
    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    .line 134
    iput-object p1, p0, Lo/WordIterator$TaskDescription;->a:Lo/WordIterator;

    return-void
.end method

.method synthetic constructor <init>(Lo/WordIterator;Lo/WordIterator$1;)V
    .locals 0

    .line 130
    invoke-direct {p0, p1}, Lo/WordIterator$TaskDescription;-><init>(Lo/WordIterator;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .line 139
    iget-object v0, p0, Lo/WordIterator$TaskDescription;->a:Lo/WordIterator;

    if-eqz v0, :cond_0

    .line 140
    invoke-virtual {v0}, Lo/WordIterator;->c()V

    :cond_0
    return-void
.end method

.method public onInvalidated()V
    .locals 0

    .line 146
    invoke-virtual {p0}, Lo/WordIterator$TaskDescription;->onChanged()V

    return-void
.end method
