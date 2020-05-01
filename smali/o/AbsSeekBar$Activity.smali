.class final Lo/AbsSeekBar$Activity;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/AbsSeekBar;->i(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic c:Lo/AbsSeekBar;

.field final synthetic d:Ljava/lang/String;


# direct methods
.method constructor <init>(Lo/AbsSeekBar;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lo/AbsSeekBar$Activity;->c:Lo/AbsSeekBar;

    iput-object p2, p0, Lo/AbsSeekBar$Activity;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 219
    iget-object v0, p0, Lo/AbsSeekBar$Activity;->c:Lo/AbsSeekBar;

    iget-object v1, p0, Lo/AbsSeekBar$Activity;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lo/AbsSeekBar;->h(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 220
    iget-object v1, p0, Lo/AbsSeekBar$Activity;->c:Lo/AbsSeekBar;

    iget-object v2, p0, Lo/AbsSeekBar$Activity;->d:Ljava/lang/String;

    invoke-static {v1, v0}, Lo/AbsSeekBar;->d(Lo/AbsSeekBar;Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lo/AbsSeekBar;->c(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method
