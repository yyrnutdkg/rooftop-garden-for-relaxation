module ApplicationHelper
  def default_meta_tags
    {
      site: 'Topgardrary',
      title: 'Topgardrary',
      reverse: true,
      separator: '|',
      description: '近くの屋上庭園を探そう！',
      keywords: '屋上庭園',
      canonical: request.original_url,
      noindex: ! Rails.env.production?,
      icon: [
        { href: image_url('favicon.ico') },
        { href: image_url('icon.jpg'), rel: 'apple-touch-icon', sizes: '180x180', type: 'image/jpg' },
      ],
      og: {
        site_name: 'Topgardrary',
        title: 'Topgardrary',
        description: '近くの屋上庭園を探そう！',
        type: 'website',
        url: request.original_url,
        image: image_url('garden_s.jpg'),
        locale: 'ja_JP',
      },
      twitter: {
        card: 'summary',
        site: '@InfoTopgardrary',
      }
    }
  end
end
