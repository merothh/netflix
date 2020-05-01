.class final Lo/WallpaperService$Application;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/WallpaperService;->d(Lo/VoiceInteractionSessionService;Landroid/view/View$OnClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic b:Ljava/util/List;

.field final synthetic e:Lo/WallpaperService;


# direct methods
.method constructor <init>(Lo/WallpaperService;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lo/WallpaperService$Application;->e:Lo/WallpaperService;

    iput-object p2, p0, Lo/WallpaperService$Application;->b:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 1

    .line 54
    iget-object p1, p0, Lo/WallpaperService$Application;->e:Lo/WallpaperService;

    iget-object v0, p0, Lo/WallpaperService$Application;->b:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Lo/WallpaperService;->a(Ljava/lang/String;)V

    return-void
.end method
