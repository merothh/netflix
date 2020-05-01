.class final Lo/AutoCompleteTextView$ActionBar$TaskDescription;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/reactivex/functions/Action;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/AutoCompleteTextView$ActionBar;->a(Lcom/netflix/model/leafs/VideoInfo$Sharing;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# static fields
.field public static final d:Lo/AutoCompleteTextView$ActionBar$TaskDescription;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lo/AutoCompleteTextView$ActionBar$TaskDescription;

    invoke-direct {v0}, Lo/AutoCompleteTextView$ActionBar$TaskDescription;-><init>()V

    sput-object v0, Lo/AutoCompleteTextView$ActionBar$TaskDescription;->d:Lo/AutoCompleteTextView$ActionBar$TaskDescription;

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

    .line 189
    sget-object v0, Lo/AdapterViewFlipper;->b:Lo/AdapterViewFlipper$TaskDescription;

    check-cast v0, Lo/MessagePdu;

    return-void
.end method
