.class public final Lo/Xa$ActionBar;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/RadioButton$ActionBar;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Xa;-><init>(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic e:Lo/Xa;


# direct methods
.method constructor <init>(Lo/Xa;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 33
    iput-object p1, p0, Lo/Xa$ActionBar;->e:Lo/Xa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Lo/RadioButton;II)V
    .locals 1

    const-string p3, "seekButton"

    invoke-static {p1, p3}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    iget-object p1, p0, Lo/Xa$ActionBar;->e:Lo/Xa;

    new-instance p3, Lo/UU$ComponentCallbacks2;

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-direct {p3, p2}, Lo/UU$ComponentCallbacks2;-><init>(Z)V

    invoke-virtual {p1, p3}, Lo/Xa;->e(Ljava/lang/Object;)V

    .line 39
    iget-object p1, p0, Lo/Xa$ActionBar;->e:Lo/Xa;

    sget-object p2, Lo/UU$Cursor;->b:Lo/UU$Cursor;

    invoke-virtual {p1, p2}, Lo/Xa;->e(Ljava/lang/Object;)V

    return-void
.end method

.method public d(Lo/RadioButton;II)V
    .locals 3

    const-string v0, "seekButton"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onSeekConfirmed, tapCount is "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "PlayerPrimaryControlsUIView"

    invoke-static {v0, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    iget-object p1, p0, Lo/Xa$ActionBar;->e:Lo/Xa;

    .line 45
    new-instance v0, Lo/UU$ClipData;

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne p2, v2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    mul-int/lit16 p3, p3, 0x2710

    invoke-direct {v0, p2, p3, v1}, Lo/UU$ClipData;-><init>(ZIZ)V

    .line 44
    invoke-virtual {p1, v0}, Lo/Xa;->e(Ljava/lang/Object;)V

    return-void
.end method
