.class Lo/w$ActionBar$StateListAnimator;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/w$ActionBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "StateListAnimator"
.end annotation


# instance fields
.field final a:Ljava/nio/ByteBuffer;

.field final c:Z


# direct methods
.method public constructor <init>(IZ)V
    .locals 0

    .line 267
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 268
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lo/w$ActionBar$StateListAnimator;->a:Ljava/nio/ByteBuffer;

    .line 269
    iput-boolean p2, p0, Lo/w$ActionBar$StateListAnimator;->c:Z

    return-void
.end method
