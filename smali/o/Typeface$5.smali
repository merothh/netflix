.class Lo/Typeface$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/Typeface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic e:Lo/Typeface;


# direct methods
.method constructor <init>(Lo/Typeface;)V
    .locals 0

    .line 334
    iput-object p1, p0, Lo/Typeface$5;->e:Lo/Typeface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 1

    .line 337
    iget-object v0, p0, Lo/Typeface$5;->e:Lo/Typeface;

    invoke-virtual {v0}, Lo/Typeface;->onDismiss()V

    return-void
.end method
