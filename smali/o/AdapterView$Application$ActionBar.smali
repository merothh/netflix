.class final Lo/AdapterView$Application$ActionBar;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/reactivex/functions/Action;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/AdapterView$Application;->e(Lcom/netflix/model/leafs/VideoInfo$Sharing;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# static fields
.field public static final e:Lo/AdapterView$Application$ActionBar;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lo/AdapterView$Application$ActionBar;

    invoke-direct {v0}, Lo/AdapterView$Application$ActionBar;-><init>()V

    sput-object v0, Lo/AdapterView$Application$ActionBar;->e:Lo/AdapterView$Application$ActionBar;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 97
    sget-object v0, Lo/ActivityChooserView;->a:Lo/ActivityChooserView$TaskDescription;

    check-cast v0, Lo/MessagePdu;

    return-void
.end method
