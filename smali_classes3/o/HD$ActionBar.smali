.class final Lo/HD$ActionBar;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/HD;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic b:Lo/HD;


# direct methods
.method constructor <init>(Lo/HD;)V
    .locals 0

    iput-object p1, p0, Lo/HD$ActionBar;->b:Lo/HD;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    .line 32
    sget-object v0, Lo/GR;->b:Lo/GR$ActionBar;

    if-eqz p1, :cond_0

    .line 33
    check-cast p1, Lo/ListView;

    .line 35
    iget-object v1, p0, Lo/HD$ActionBar;->b:Lo/HD;

    invoke-virtual {v1}, Lo/HD;->u()Ljava/lang/Integer;

    move-result-object v1

    .line 32
    invoke-virtual {v0, p1, p2, v1}, Lo/GR$ActionBar;->b(Lo/ListView;ZLjava/lang/Integer;)V

    return-void

    .line 33
    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type com.netflix.mediaclient.android.widget.NetflixToggleButton"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
