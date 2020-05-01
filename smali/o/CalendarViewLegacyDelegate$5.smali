.class final Lo/CalendarViewLegacyDelegate$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/CalendarViewLegacyDelegate;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/Runnable;ZLjava/lang/Runnable;Ljava/lang/Runnable;)Lo/ScrollBarDrawable$ActionBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic c:Ljava/lang/Runnable;

.field final synthetic d:Ljava/lang/Runnable;

.field final synthetic e:Landroid/os/Handler;


# direct methods
.method constructor <init>(Ljava/lang/Runnable;Landroid/os/Handler;Ljava/lang/Runnable;)V
    .locals 0

    .line 176
    iput-object p1, p0, Lo/CalendarViewLegacyDelegate$5;->d:Ljava/lang/Runnable;

    iput-object p2, p0, Lo/CalendarViewLegacyDelegate$5;->e:Landroid/os/Handler;

    iput-object p3, p0, Lo/CalendarViewLegacyDelegate$5;->c:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 178
    iget-object p1, p0, Lo/CalendarViewLegacyDelegate$5;->d:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    .line 179
    iget-object p2, p0, Lo/CalendarViewLegacyDelegate$5;->e:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 181
    :cond_0
    iget-object p1, p0, Lo/CalendarViewLegacyDelegate$5;->c:Ljava/lang/Runnable;

    if-eqz p1, :cond_1

    .line 182
    iget-object p2, p0, Lo/CalendarViewLegacyDelegate$5;->e:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method
